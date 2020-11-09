.class LFragments/Tab1$2;
.super Ljava/lang/Object;
.source "Tab1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 255
    iput-object p1, p0, LFragments/Tab1$2;->this$0:LFragments/Tab1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v1, p0, LFragments/Tab1$2;->this$0:LFragments/Tab1;

    iget-object v1, v1, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 260
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, LFragments/Tab1$2;->this$0:LFragments/Tab1;

    iget-object v1, v1, LFragments/Tab1;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 263
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, LFragments/Tab1$2;->this$0:LFragments/Tab1;

    invoke-static {v1}, LFragments/Tab1;->access$000(LFragments/Tab1;)V

    .line 265
    return-void
.end method
