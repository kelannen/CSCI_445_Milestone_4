.class LAdapter/ShareControlAdapter$3;
.super Ljava/lang/Object;
.source "ShareControlAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/ShareControlAdapter;->alertDialogDelete(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/ShareControlAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mMap:Ljava/util/HashMap;

.field final synthetic val$mPosition:I


# direct methods
.method constructor <init>(LAdapter/ShareControlAdapter;Landroid/app/Dialog;ILjava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/ShareControlAdapter;

    .prologue
    .line 201
    iput-object p1, p0, LAdapter/ShareControlAdapter$3;->this$0:LAdapter/ShareControlAdapter;

    iput-object p2, p0, LAdapter/ShareControlAdapter$3;->val$dialog:Landroid/app/Dialog;

    iput p3, p0, LAdapter/ShareControlAdapter$3;->val$mPosition:I

    iput-object p4, p0, LAdapter/ShareControlAdapter$3;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, LAdapter/ShareControlAdapter$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 205
    new-instance v0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;

    iget-object v1, p0, LAdapter/ShareControlAdapter$3;->this$0:LAdapter/ShareControlAdapter;

    iget v2, p0, LAdapter/ShareControlAdapter$3;->val$mPosition:I

    invoke-direct {v0, v1, v2}, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;-><init>(LAdapter/ShareControlAdapter;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/HashMap;

    const/4 v2, 0x0

    iget-object v3, p0, LAdapter/ShareControlAdapter$3;->val$mMap:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method
