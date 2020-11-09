.class public Lcom/iot/engine/GoColor/GoColorActivity;
.super Landroid/app/Activity;
.source "GoColorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PongoColorActivity"


# instance fields
.field private btnFive:Landroid/widget/Button;

.field private btnFour:Landroid/widget/Button;

.field private btnOne:Landroid/widget/Button;

.field private btnSetColor:Landroid/widget/Button;

.field private btnSeven:Landroid/widget/Button;

.field private btnSix:Landroid/widget/Button;

.field private btnThree:Landroid/widget/Button;

.field private btnTwo:Landroid/widget/Button;

.field private colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

.field private db:LDatabase/DatabaseHandler;

.field private imgBack:Landroid/widget/ImageView;

.field private mColorArr:[Ljava/lang/Integer;

.field private mSwitchID:Ljava/lang/String;

.field private sessionManager:LSession/SessionManager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0xee82ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GoColor/GoColorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoColor/GoColorActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mSwitchID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/GoColor/GoColorActivity;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoColor/GoColorActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/GoColor/GoColorActivity;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/GoColor/GoColorActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method private initiControl()V
    .locals 2

    .prologue
    const v1, 0x7f0d0156

    .line 55
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->imgBack:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->txtHeading:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0, v1}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->imgBack:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Pongo Color"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f0d0151

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iot/engine/GoColor/ColorPicker;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    .line 61
    const v0, 0x7f0d0152

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSetColor:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnOne:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnTwo:Landroid/widget/Button;

    .line 65
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnThree:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnFour:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnFive:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSix:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSeven:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSetColor:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnOne:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnTwo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnThree:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnFour:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnFive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSix:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->btnSeven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/iot/engine/GoColor/GoColorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/iot/engine/GoColor/GoColorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mSwitchID:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 93
    :sswitch_0
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    invoke-virtual {v5}, Lcom/iot/engine/GoColor/ColorPicker;->getColor()I

    move-result v2

    .line 95
    .local v2, "mColor":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 96
    .local v4, "red":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 97
    .local v1, "green":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 99
    .local v0, "blue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "mColorString":Ljava/lang/String;
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->sessionManager:LSession/SessionManager;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, LSession/SessionManager;->setGoColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v5, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;-><init>(Lcom/iot/engine/GoColor/GoColorActivity;Lcom/iot/engine/GoColor/GoColorActivity$1;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 106
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "mColor":I
    .end local v3    # "mColorString":Ljava/lang/String;
    .end local v4    # "red":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/GoColor/GoColorActivity;->finish()V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto :goto_0

    .line 113
    :sswitch_3
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto :goto_0

    .line 116
    :sswitch_4
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto/16 :goto_0

    .line 119
    :sswitch_5
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_6
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_7
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto/16 :goto_0

    .line 128
    :sswitch_8
    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity;->colorPicker:Lcom/iot/engine/GoColor/ColorPicker;

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity;->mColorArr:[Ljava/lang/Integer;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iot/engine/GoColor/ColorPicker;->setColor(I)V

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x7f0d00c3 -> :sswitch_2
        0x7f0d00c4 -> :sswitch_5
        0x7f0d00c5 -> :sswitch_8
        0x7f0d00c7 -> :sswitch_3
        0x7f0d00c8 -> :sswitch_6
        0x7f0d00cb -> :sswitch_4
        0x7f0d00cc -> :sswitch_7
        0x7f0d0152 -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/iot/engine/GoColor/GoColorActivity;->setContentView(I)V

    .line 49
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->sessionManager:LSession/SessionManager;

    .line 50
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/GoColor/GoColorActivity;->db:LDatabase/DatabaseHandler;

    .line 51
    invoke-direct {p0}, Lcom/iot/engine/GoColor/GoColorActivity;->initiControl()V

    .line 52
    return-void
.end method
