.class LFragments/Tab2$1;
.super Ljava/lang/Object;
.source "Tab2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Tab2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Tab2;


# direct methods
.method constructor <init>(LFragments/Tab2;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Tab2;

    .prologue
    .line 133
    iput-object p1, p0, LFragments/Tab2$1;->this$0:LFragments/Tab2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, LFragments/Tab2$1;->this$0:LFragments/Tab2;

    const/16 v1, 0x18

    const-string v2, "Select Hour"

    invoke-virtual {v0, v1, v2}, LFragments/Tab2;->showHour(ILjava/lang/String;)V

    .line 140
    return-void
.end method
