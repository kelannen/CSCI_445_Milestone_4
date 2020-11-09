.class LFragments/Rooms$2;
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
    .line 612
    iput-object p1, p0, LFragments/Rooms$2;->this$0:LFragments/Rooms;

    iput-object p2, p0, LFragments/Rooms$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 615
    iget-object v0, p0, LFragments/Rooms$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 616
    new-instance v1, LFragments/Rooms$AsyncTaskForHideRoom;

    iget-object v0, p0, LFragments/Rooms$2;->this$0:LFragments/Rooms;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LFragments/Rooms$AsyncTaskForHideRoom;-><init>(LFragments/Rooms;LFragments/Rooms$1;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v4, p0, LFragments/Rooms$2;->this$0:LFragments/Rooms;

    iget-object v4, v4, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v4}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, LFragments/Rooms$AsyncTaskForHideRoom;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 617
    return-void
.end method
