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
        /// Board size
        /// </summary>
        [JsonProperty("size")]
        public string Size { get; set; }
    }
}
