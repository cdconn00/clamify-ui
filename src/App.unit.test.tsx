import React from "react";
import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders placeholder text", () => {
  render(<App />);
  const linkElement = screen.getByText(/Clamify UI placeholder./i);
  expect(linkElement).toBeInTheDocument();
});
