.class LAdapter/SchedularAdapter$4;
.super Ljava/lang/Object;
.source "SchedularAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SchedularAdapter;->alertDialogDelete(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SchedularAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(LAdapter/SchedularAdapter;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SchedularAdapter;

    .prologue
    .line 209
    iput-object p1, p0, LAdapter/SchedularAdapter$4;->this$0:LAdapter/SchedularAdapter;

    iput-object p2, p0, LAdapter/SchedularAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, LAdapter/SchedularAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    return-void
.end method
