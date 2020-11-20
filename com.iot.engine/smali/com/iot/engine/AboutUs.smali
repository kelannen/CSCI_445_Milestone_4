.class public Lcom/iot/engine/AboutUs;
.super Landroid/app/Activity;
.source "AboutUs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setToolbar()V
    .locals 3

    .prologue
    .line 34
    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Lcom/iot/engine/AboutUs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "txtHeading":Landroid/widget/TextView;
    const v2, 0x7f0d0156

    invoke-virtual {p0, v2}, Lcom/iot/engine/AboutUs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .local v0, "imgBack":Landroid/widget/ImageView;
    const-string v2, "Contact Us"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 58
    const v0, 0x7f050015

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/AboutUs;->overridePendingTransition(II)V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 46
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/AboutUs;->startActivity(Landroid/content/Intent;)V

    .line 48
    const v1, 0x7f050015

    const v2, 0x7f050016

    invoke-virtual {p0, v1, v2}, Lcom/iot/engine/AboutUs;->overridePendingTransition(II)V

    .line 49
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/iot/engine/AboutUs;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/iot/engine/AboutUs;->setToolbar()V

    .line 27
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/iot/engine/AboutUs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/iot/engine/AboutUs;->webView:Landroid/webkit/WebView;

    .line 28
    iget-object v0, p0, Lcom/iot/engine/AboutUs;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/iot/engine/AboutUs;->webView:Landroid/webkit/WebView;

    const-string v1, "http://gsmarthome.com/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 30
    return-void
.end method
