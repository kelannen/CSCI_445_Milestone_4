.class public Lcom/iot/engine/Faq;
.super Landroid/app/Activity;
.source "Faq.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setToolbar()V
    .locals 3

    .prologue
    .line 29
    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Lcom/iot/engine/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "txtHeading":Landroid/widget/TextView;
    const v2, 0x7f0d0156

    invoke-virtual {p0, v2}, Lcom/iot/engine/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .local v0, "imgBack":Landroid/widget/ImageView;
    const-string v2, "FAQ\'s"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 55
    const v0, 0x7f050015

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/Faq;->overridePendingTransition(II)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/Faq;->finish()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcom/iot/engine/Faq;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/iot/engine/Faq;->setToolbar()V

    .line 22
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/iot/engine/Faq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/iot/engine/Faq;->webView:Landroid/webkit/WebView;

    .line 23
    iget-object v0, p0, Lcom/iot/engine/Faq;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    iget-object v0, p0, Lcom/iot/engine/Faq;->webView:Landroid/webkit/WebView;

    const-string v1, "http://gsmarthome.com/app/faq.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
