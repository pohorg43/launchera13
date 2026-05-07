.class public final synthetic Lcom/android/wm/shell/onehanded/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$TimeoutListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/c;->a:Lcom/android/wm/shell/onehanded/OneHandedController;

    return-void
.end method


# virtual methods
.method public final onTimeout(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/c;->a:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->b(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    return-void
.end method
