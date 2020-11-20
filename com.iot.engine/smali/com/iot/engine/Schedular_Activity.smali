.class public Lcom/iot/engine/Schedular_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Schedular_Activity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final RQS_1:I = 0x1

.field public static mRoomName:Ljava/lang/String;

.field public static mSwitchName:Ljava/lang/String;


# instance fields
.field btn_scedule:Landroid/widget/Button;

.field imgBack:Landroid/widget/ImageView;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mPickerTheme:I

.field mTimeFormat:Ljava/text/DateFormat;

.field mapEditList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private txtHeading:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "Switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/iot/engine/Schedular_Activity;->mSwitchName:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v0, "Room"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/iot/engine/Schedular_Activity;->mRoomName:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/iot/engine/Schedular_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/Schedular_Activity;->btn_scedule:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/Schedular_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/Schedular_Activity;->txtHeading:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/Schedular_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/Schedular_Activity;->imgBack:Landroid/widget/ImageView;

    .line 94
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/Schedular_Activity;->finish()V

    .line 130
    const v0, 0x7f050015

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/Schedular_Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f040099

    invoke-virtual {p0, v1}, Lcom/iot/engine/Schedular_Activity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/iot/engine/Schedular_Activity;->initView()V

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iot/engine/Schedular_Activity;->mapEditList:Ljava/util/HashMap;

    .line 48
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0d0214

    invoke-virtual {p0, v1}, Lcom/iot/engine/Schedular_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 52
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    .line 53
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 55
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const-string v3, "Date, Time"

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 56
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const-string v3, "Timer"

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 59
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 60
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorHeight(I)V

    .line 65
    invoke-virtual {p0}, Lcom/iot/engine/Schedular_Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 66
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "SwitchInfo"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/iot/engine/Schedular_Activity;->mapList:Ljava/util/HashMap;

    .line 67
    const-string v1, "Operation"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "strMessage":Ljava/lang/String;
    const-string v1, "EDIT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "EditInfo"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/iot/engine/Schedular_Activity;->mapEditList:Ljava/util/HashMap;

    .line 74
    :cond_0
    const-string v1, "mSwitchName"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iot/engine/Schedular_Activity;->mSwitchName:Ljava/lang/String;

    .line 75
    const-string v1, "mRoomName"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iot/engine/Schedular_Activity;->mRoomName:Ljava/lang/String;

    .line 78
    const v1, 0x7f0d0232

    invoke-virtual {p0, v1}, Lcom/iot/engine/Schedular_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/iot/engine/Schedular_Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 81
    new-instance v0, Lcom/iot/engine/Pager;

    invoke-virtual {p0}, Lcom/iot/engine/Schedular_Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    iget-object v3, p0, Lcom/iot/engine/Schedular_Activity;->mapList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/iot/engine/Schedular_Activity;->mapEditList:Ljava/util/HashMap;

    invoke-direct/range {v0 .. v5}, Lcom/iot/engine/Pager;-><init>(Landroid/support/v4/app/FragmentManager;ILjava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 84
    .local v0, "adapter":Lcom/iot/engine/Pager;
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/iot/engine/Schedular_Activity;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Scheduler"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 107
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 98
    .local v0, "adv":I
    iget-object v1, p0, Lcom/iot/engine/Schedular_Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 99
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 103
    return-void
.end method
