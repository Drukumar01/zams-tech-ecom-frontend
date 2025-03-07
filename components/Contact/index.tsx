"use client";
import { useState } from "react";
import axios from "axios";
import NewsLatterBox from "./NewsLatterBox";

const Contact = () => {
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    message: "",
  });

  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError("");
    setSuccess(false);

    try {
      const response = await axios.post(
        `http://localhost:8000/api/contact`, // Base URL env me move kiya
        formData,
        { headers: { "Content-Type": "application/json" } }
      );

      if (response.status === 200) {
        setSuccess(true);
        setFormData({ name: "", email: "", message: "" });
      }
    } catch (err) {
      setError("Failed to send message. Try again later.");
    } finally {
      setLoading(false);
    }
  };

  return (
      <section id="contact" className="overflow-hidden py-16 md:py-20 lg:py-28">
        <div className="container flex justify-center">
          <div className="w-full max-w-3xl">
            <div className="shadow-three dark:bg-gray-dark mb-12 rounded-sm bg-white px-8 py-11 sm:p-[55px] lg:mb-5 lg:px-8 xl:p-[55px]">
              <h2 className="mb-3 text-2xl font-bold text-black dark:text-white sm:text-3xl lg:text-2xl xl:text-3xl">
                Need Help? Open a Ticket
              </h2>
              <p className="mb-12 text-base font-medium text-body-color">
                Our support team will get back to you ASAP via email.
              </p>
                <form onSubmit={handleSubmit}>
                  <div className="-mx-4 flex flex-wrap">
                    <div className="w-full px-4 md:w-1/2">
                      <div className="mb-8">
                        <label htmlFor="name" className="mb-3 block text-sm font-medium text-dark dark:text-white">
                          Your Name
                        </label>
                        <input
                          type="text"
                          name="name"
                          value={formData.name}
                          onChange={handleChange}
                          placeholder="Enter your name"
                          required
                          className="border-stroke w-full rounded-sm border bg-[#f8f8f8] px-6 py-3 text-base text-body-color outline-none focus:border-primary dark:border-transparent dark:bg-[#2C303B] dark:text-white"
                        />
                      </div>
                    </div>
                    <div className="w-full px-4 md:w-1/2">
                      <div className="mb-8">
                        <label htmlFor="email" className="mb-3 block text-sm font-medium text-dark dark:text-white">
                          Your Email
                        </label>
                        <input
                          type="email"
                          name="email"
                          value={formData.email}
                          onChange={handleChange}
                          placeholder="Enter your email"
                          required
                          className="border-stroke w-full rounded-sm border bg-[#f8f8f8] px-6 py-3 text-base text-body-color outline-none focus:border-primary dark:border-transparent dark:bg-[#2C303B] dark:text-white"
                        />
                      </div>
                    </div>
                    <div className="w-full px-4">
                      <div className="mb-8">
                        <label htmlFor="message" className="mb-3 block text-sm font-medium text-dark dark:text-white">
                          Your Message
                        </label>
                        <textarea
                          name="message"
                          rows={5}
                          value={formData.message}
                          onChange={handleChange}
                          placeholder="Enter your Message"
                          required
                          className="border-stroke w-full resize-none rounded-sm border bg-[#f8f8f8] px-6 py-3 text-base text-body-color outline-none focus:border-primary dark:border-transparent dark:bg-[#2C303B] dark:text-white"
                        ></textarea>
                      </div>
                      {success && <p className="text-green-500">Message sent successfully!</p>}
                      {error && <p className="text-red-500">{error}</p>}
                    </div>
                    <div className="w-full px-4">
                      <button
                        type="submit"
                        disabled={loading}
                        className={`shadow-submit dark:shadow-submit-dark rounded-sm bg-primary px-9 py-4 text-base font-medium text-white duration-300 ${
                          loading ? "opacity-50 cursor-not-allowed" : "hover:bg-primary/90"
                        }`}
                      >
                        {loading ? "Submitting..." : "Submit Ticket"}
                      </button>
                    </div>
                  </div>
                </form>
              </div>
                <div className="w-full px-4 lg:w-5/12 xl:w-4/12">
                  {/* <NewsLatterBox /> */}
                </div>
              </div>
            </div>
          </section>
        );
      };

export default Contact;
