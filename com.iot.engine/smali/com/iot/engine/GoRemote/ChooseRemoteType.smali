.class public Lcom/iot/engine/GoRemote/ChooseRemoteType;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChooseRemoteType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field cardAc:Landroid/support/v7/widget/CardView;

.field cardCdPlayer:Landroid/support/v7/widget/CardView;

.field cardDish:Landroid/support/v7/widget/CardView;

.field cardTelevision:Landroid/support/v7/widget/CardView;

.field imgBack:Landroid/widget/ImageView;

.field txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initializeControls()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardTelevision:Landroid/support/v7/widget/CardView;

    .line 34
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardAc:Landroid/support/v7/widget/CardView;

    .line 35
    const v0, 0x7f0d00f3

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardCdPlayer:Landroid/support/v7/widget/CardView;

    .line 36
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardDish:Landroid/support/v7/widget/CardView;

    .line 37
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->imgBack:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->txtHeading:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardTelevision:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardAc:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardCdPlayer:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->cardDish:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/iot/engine/GoRemote/ChooseRemoteType;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Select Remote"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 57
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->finish()V

    goto :goto_0

    .line 61
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "TV"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->finish()V

    goto :goto_0

    .line 66
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->finish()V

    goto :goto_0

    .line 71
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "Music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->finish()V

    goto :goto_0

    .line 76
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Info"

    const-string v2, "TV"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->finish()V

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f0d00f1 -> :sswitch_1
        0x7f0d00f2 -> :sswitch_2
        0x7f0d00f3 -> :sswitch_3
        0x7f0d00f4 -> :sswitch_4
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/iot/engine/GoRemote/ChooseRemoteType;->initializeControls()V

    .line 29
    return-void
.end method
