.class LFragments/Rooms$3;
.super Ljava/lang/Object;
.source "Rooms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Rooms;->alertHideSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Rooms;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(LFragments/Rooms;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Rooms;

    .prologue
    .line 620
    iput-object p1, p0, LFragments/Rooms$3;->this$0:LFragments/Rooms;

    iput-object p2, p0, LFragments/Rooms$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 623
    iget-object v0, p0, LFragments/Rooms$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 624
    return-void
.end method
