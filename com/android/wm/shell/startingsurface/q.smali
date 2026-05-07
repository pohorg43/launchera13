.class public final synthetic Lcom/android/wm/shell/startingsurface/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/q;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/q;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/q;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/q;->a:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/q;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/q;->c:Ljava/lang/Integer;

    check-cast p1, Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->c(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    return-void
.end method
