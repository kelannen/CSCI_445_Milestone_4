.class LFragments/Tab1$4;
.super Ljava/lang/Object;
.source "Tab1.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Tab1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Tab1;


# direct methods
.method constructor <init>(LFragments/Tab1;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Tab1;

    .prologue
    .line 283
    iput-object p1, p0, LFragments/Tab1$4;->this$0:LFragments/Tab1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 286
    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p0, LFragments/Tab1$4;->this$0:LFragments/Tab1;

    const-string v1, "1"

    invoke-static {v0, v1}, LFragments/Tab1;->access$302(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object v0, p0, LFragments/Tab1$4;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$400(LFragments/Tab1;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, LFragments/Tab1$4;->this$0:LFragments/Tab1;

    const-string v1, "NA"

    invoke-static {v0, v1}, LFragments/Tab1;->access$302(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    iget-object v0, p0, LFragments/Tab1$4;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$400(LFragments/Tab1;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
