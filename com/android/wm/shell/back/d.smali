.class public final synthetic Lcom/android/wm/shell/back/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/window/IOnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IOnBackInvokedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/d;->a:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/d;->a:Landroid/window/IOnBackInvokedCallback;

    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->a(Landroid/window/IOnBackInvokedCallback;Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method
