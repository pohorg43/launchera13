.class public final synthetic Lcom/android/wm/shell/splitscreen/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/s;->a:I

    iput p2, p0, Lcom/android/wm/shell/splitscreen/s;->b:I

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/s;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/s;->a:I

    iget v1, p0, Lcom/android/wm/shell/splitscreen/s;->b:I

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/s;->c:Z

    check-cast p1, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;->b(IIZLcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    return-void
.end method
