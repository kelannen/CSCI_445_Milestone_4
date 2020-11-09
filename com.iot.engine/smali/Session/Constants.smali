.class public LSession/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CHANGEIP_PASS:Ljava/lang/String; = "g1234"

.field public static final INTERNET:Ljava/lang/String; = "Internet"

.field public static final IS_LOGIN:Ljava/lang/String; = "IsLoggedIn"

.field public static final JSON:Lcom/squareup/okhttp/MediaType;

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final LOCAL_HUB:Ljava/lang/String; = "Localhub"

.field public static final MESSAGE_INTERNET_CONNECTION:Ljava/lang/String; = "Check internet connection!!!"

.field public static final MESSAGE_TRY_AGAIN:Ljava/lang/String; = "try again!!!"

.field public static final PORT:I = 0x1f90

.field public static final PREF_NAME:Ljava/lang/String; = "SmartHome"

.field public static PRIVATE_MODE:I = 0x0

.field public static final SERVER_BUCKET:Ljava/lang/String; = "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

.field private static final TAG:Ljava/lang/String; = "Constants"

.field public static URL_GO:Ljava/lang/String;

.field public static URL_GO_AWS:Ljava/lang/String;

.field private static objConstant:LSession/Constants;

.field public static okHttpClientSSL:Lcom/squareup/okhttp/OkHttpClient;


# instance fields
.field client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, LSession/Constants;->PRIVATE_MODE:I

    .line 60
    const-string v0, ""

    sput-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    .line 67
    const-string v0, "http://odoo.trynoise.com:8080/smart_home_central/"

    sput-object v0, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    .line 92
    const-string v0, "application/json; charset=UTF8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, LSession/Constants;->JSON:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, LSession/Constants;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-void
.end method

.method public static getInstance()LSession/Constants;
    .locals 2

    .prologue
    .line 78
    sget-object v0, LSession/Constants;->objConstant:LSession/Constants;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "Constants"

    const-string v1, "getInstance: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    sput-object v0, LSession/Constants;->objConstant:LSession/Constants;

    .line 83
    :cond_0
    sget-object v0, LSession/Constants;->objConstant:LSession/Constants;

    return-object v0
.end method

.method private static getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 8

    .prologue
    .line 109
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, LSession/Constants$1;

    invoke-direct {v6}, LSession/Constants$1;-><init>()V

    aput-object v6, v4, v5

    .line 127
    .local v4, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const-string v5, "SSL"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 128
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v5, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 130
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 132
    .local v3, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 133
    .local v1, "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 134
    const-wide/16 v6, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 135
    const-wide/16 v6, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 136
    new-instance v5, LSession/Constants$2;

    invoke-direct {v5}, LSession/Constants$2;-><init>()V

    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-object v1

    .line 144
    .end local v1    # "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v3    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doGetRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 199
    invoke-virtual {v2, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 201
    .local v0, "request":Lcom/squareup/okhttp/Request;
    invoke-static {}, LSession/Constants;->getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 202
    .local v1, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v3, LSession/Constants;->JSON:Lcom/squareup/okhttp/MediaType;

    invoke-static {v3, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 152
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 153
    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 159
    .local v1, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {p0}, LSession/Constants;->getInstanceOfSSLCertificate()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 160
    .local v2, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "auth_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v3, LSession/Constants;->JSON:Lcom/squareup/okhttp/MediaType;

    invoke-static {v3, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 208
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    const-string v4, "X-AUTH-TOKEN"

    .line 209
    invoke-virtual {v3, v4, p3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "DEVICE-TYPE"

    const-string v5, "ANDROID"

    .line 210
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 211
    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 212
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 215
    .local v1, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {p0}, LSession/Constants;->getInstanceOfSSLCertificate()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 216
    .local v2, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public doPostRequestForHub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "auth_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v3, LSession/Constants;->JSON:Lcom/squareup/okhttp/MediaType;

    invoke-static {v3, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 186
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 187
    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "X-AUTH-TOKEN"

    .line 188
    invoke-virtual {v3, v4, p3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 193
    .local v1, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {p0}, LSession/Constants;->getInstanceOfSSLCertificate()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 194
    .local v2, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public doPostRoomRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "auth_token"    # Ljava/lang/String;
    .param p4, "device_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    sget-object v3, LSession/Constants;->JSON:Lcom/squareup/okhttp/MediaType;

    invoke-static {v3, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 223
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    const-string v4, "X-AUTH-TOKEN"

    .line 224
    invoke-virtual {v3, v4, p3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "DEVICE-ID"

    .line 225
    invoke-virtual {v3, v4, p4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    const-string v4, "DEVICE-TYPE"

    const-string v5, "ANDROID"

    .line 226
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 228
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 232
    .local v1, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {p0}, LSession/Constants;->getInstanceOfSSLCertificate()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 233
    .local v2, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getInstanceOfSSLCertificate()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 98
    sget-object v0, LSession/Constants;->okHttpClientSSL:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, LSession/Constants;->getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    sput-object v0, LSession/Constants;->okHttpClientSSL:Lcom/squareup/okhttp/OkHttpClient;

    .line 100
    const-string v0, "Constants"

    const-string v1, "getInstanceOfSSLCertificate: reuse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    sget-object v0, LSession/Constants;->okHttpClientSSL:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method
