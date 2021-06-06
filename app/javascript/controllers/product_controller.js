import { Controller } from "@stimulus/core";
import lozad from 'lozad'

export default class extends Controller {
    connect() {
        const observer = lozad();
        observer.observe();
    }
}