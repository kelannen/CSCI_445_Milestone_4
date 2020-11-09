.class Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CameraVideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;->startWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraVideoPlayActivity$1;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 131
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
