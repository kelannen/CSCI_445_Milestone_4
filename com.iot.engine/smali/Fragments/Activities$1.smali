.class LFragments/Activities$1;
.super Landroid/content/BroadcastReceiver;
.source "Activities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Activities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Activities;


# direct methods
.method constructor <init>(LFragments/Activities;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Activities;

    .prologue
    .line 102
    iput-object p1, p0, LFragments/Activities$1;->this$0:LFragments/Activities;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    iget-object v0, p0, LFragments/Activities$1;->this$0:LFragments/Activities;

    invoke-static {v0}, LFragments/Activities;->access$000(LFragments/Activities;)V

    .line 108
    return-void
.end method
