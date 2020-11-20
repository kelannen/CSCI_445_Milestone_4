.class public Lcom/iot/engine/Pager;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "Pager.java"


# instance fields
.field mOperation:Ljava/lang/String;

.field mapListEdit:Ljava/util/HashMap;
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

.field mapSwitchList:Ljava/util/HashMap;
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

.field tabCount:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;ILjava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tabCount"    # I
    .param p4, "mOperation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "mapListEdit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    iput p2, p0, Lcom/iot/engine/Pager;->tabCount:I

    .line 29
    iput-object p3, p0, Lcom/iot/engine/Pager;->mapSwitchList:Ljava/util/HashMap;

    .line 30
    iput-object p5, p0, Lcom/iot/engine/Pager;->mapListEdit:Ljava/util/HashMap;

    .line 31
    iput-object p4, p0, Lcom/iot/engine/Pager;->mOperation:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/iot/engine/Pager;->tabCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 40
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "SwitchInfo"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mapSwitchList:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    const-string v4, "Operation"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mOperation:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "EditInfo"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mapListEdit:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    new-instance v2, LFragments/Tab1;

    invoke-direct {v2}, LFragments/Tab1;-><init>()V

    .line 45
    .local v2, "tab1":LFragments/Tab1;
    invoke-virtual {v2, v0}, LFragments/Tab1;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 49
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "tab1":LFragments/Tab1;
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v1, "bundle1":Landroid/os/Bundle;
    const-string v4, "SwitchInfo"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mapSwitchList:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    const-string v4, "Operation"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mOperation:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v4, "EditInfo"

    iget-object v5, p0, Lcom/iot/engine/Pager;->mapListEdit:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    new-instance v3, LFragments/Tab2;

    invoke-direct {v3}, LFragments/Tab2;-><init>()V

    .line 54
    .local v3, "tab2":LFragments/Tab2;
    invoke-virtual {v3, v1}, LFragments/Tab2;->setArguments(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 55
    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
