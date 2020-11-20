.class public Lcom/iot/engine/BlankScreen;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BlankScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/BlankScreen$AsyncUserDataTask;,
        Lcom/iot/engine/BlankScreen$AsyncHubIP;
    }
.end annotation


# instance fields
.field private btnRetry:Landroid/widget/Button;

.field private rrError:Landroid/widget/RelativeLayout;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/BlankScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/BlankScreen;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->rrError:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iot/engine/BlankScreen;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/BlankScreen;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/BlankScreen;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/BlankScreen;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 51
    :pswitch_0
    new-instance v0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;

    invoke-direct {v0, p0}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;-><init>(Lcom/iot/engine/BlankScreen;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0d00db
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/iot/engine/BlankScreen;->setContentView(I)V

    .line 40
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/iot/engine/BlankScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iot/engine/BlankScreen;->rrError:Landroid/widget/RelativeLayout;

    .line 41
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/iot/engine/BlankScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/BlankScreen;->btnRetry:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->btnRetry:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;

    invoke-direct {v0, p0}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;-><init>(Lcom/iot/engine/BlankScreen;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 241
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/BlankScreen;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 242
    return-void
.end method
