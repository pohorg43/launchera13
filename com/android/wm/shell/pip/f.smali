.class public final synthetic Lcom/android/wm/shell/pip/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->a:Lcom/android/wm/shell/pip/PipMediaController;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->a:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->d(Lcom/android/wm/shell/pip/PipMediaController;Ljava/util/List;)V

    return-void
.end method
