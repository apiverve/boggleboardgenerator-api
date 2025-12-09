using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BoggleBoardGenerator
{
    /// <summary>
    /// Query options for the Boggle Board Generator API
    /// </summary>
    public class BoggleBoardGeneratorQueryOptions
    {
        /// <summary>
        /// Board size (4 or 5)
        /// Example: 4
        /// </summary>
        [JsonProperty("size")]
        public string Size { get; set; }
    }
}
