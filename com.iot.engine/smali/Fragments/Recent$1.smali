.class LFragments/Recent$1;
.super Landroid/content/BroadcastReceiver;
.source "Recent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Recent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Recent;


# direct methods
.method constructor <init>(LFragments/Recent;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Recent;

    .prologue
    .line 198
    iput-object p1, p0, LFragments/Recent$1;->this$0:LFragments/Recent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v0, p0, LFragments/Recent$1;->this$0:LFragments/Recent;

    invoke-virtual {v0}, LFragments/Recent;->setSwitchAdapter()V

    .line 205
    return-void
.end method
