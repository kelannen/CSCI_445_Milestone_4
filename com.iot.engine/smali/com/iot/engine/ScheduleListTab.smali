.class public Lcom/iot/engine/ScheduleListTab;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ScheduleListTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;,
        Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;
    }
.end annotation


# instance fields
.field private imgBack:Landroid/widget/ImageView;

.field private mSectionsPagerAdapter:Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private txtHeading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/ScheduleListTab;->finish()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListTab;->setContentView(I)V

    .line 53
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListTab;->txtHeading:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/iot/engine/ScheduleListTab;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Schedule List"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListTab;->imgBack:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/iot/engine/ScheduleListTab;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v1, Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/iot/engine/ScheduleListTab;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;-><init>(Lcom/iot/engine/ScheduleListTab;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/iot/engine/ScheduleListTab;->mSectionsPagerAdapter:Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;

    .line 60
    const v1, 0x7f0d00af

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/iot/engine/ScheduleListTab;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    iget-object v1, p0, Lcom/iot/engine/ScheduleListTab;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/iot/engine/ScheduleListTab;->mSectionsPagerAdapter:Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    const v1, 0x7f0d00ae

    invoke-virtual {p0, v1}, Lcom/iot/engine/ScheduleListTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 64
    .local v0, "tabLayout":Landroid/support/design/widget/TabLayout;
    iget-object v1, p0, Lcom/iot/engine/ScheduleListTab;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 66
    return-void
.end method
