.class public Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;
.super Landroid/support/v4/app/Fragment;
.source "ScheduleListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ScheduleListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderFragment"
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    return-void
.end method

.method public static newInstance(I)Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .prologue
    .line 97
    new-instance v1, Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;

    invoke-direct {v1}, Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;-><init>()V

    .line 98
    .local v1, "fragment":Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v1, v0}, Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 106
    const v2, 0x7f040059

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f0d014f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0600b4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "section_number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/iot/engine/ScheduleListTab$PlaceholderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object v0
.end method
