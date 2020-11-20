.class public Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ScheduleListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ScheduleListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ScheduleListTab;


# direct methods
.method public constructor <init>(Lcom/iot/engine/ScheduleListTab;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ScheduleListTab;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/iot/engine/ScheduleListTab$SectionsPagerAdapter;->this$0:Lcom/iot/engine/ScheduleListTab;

    .line 120
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 121
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 136
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 130
    :pswitch_0
    new-instance v1, LFragments/SwitchScheduleFragment;

    invoke-direct {v1}, LFragments/SwitchScheduleFragment;-><init>()V

    .line 131
    .local v1, "s_schedule":LFragments/SwitchScheduleFragment;
    goto :goto_0

    .line 133
    .end local v1    # "s_schedule":LFragments/SwitchScheduleFragment;
    :pswitch_1
    new-instance v0, LFragments/ProfileScheduleListFragment;

    invoke-direct {v0}, LFragments/ProfileScheduleListFragment;-><init>()V

    .local v0, "p_schedule":LFragments/ProfileScheduleListFragment;
    move-object v1, v0

    .line 134
    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "SWITCH"

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "PROFILES"

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
