.class public final synthetic Lcom/android/wm/shell/onehanded/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/l;->a:Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/l;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/l;->a:Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/l;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/l;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;->a(Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
