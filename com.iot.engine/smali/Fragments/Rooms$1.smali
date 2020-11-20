.class LFragments/Rooms$1;
.super Landroid/content/BroadcastReceiver;
.source "Rooms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Rooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Rooms;


# direct methods
.method constructor <init>(LFragments/Rooms;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Rooms;

    .prologue
    .line 494
    iput-object p1, p0, LFragments/Rooms$1;->this$0:LFragments/Rooms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 498
    iget-object v0, p0, LFragments/Rooms$1;->this$0:LFragments/Rooms;

    invoke-static {v0}, LFragments/Rooms;->access$400(LFragments/Rooms;)V

    .line 499
    return-void
.end method
