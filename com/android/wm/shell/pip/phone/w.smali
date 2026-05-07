.class public final synthetic Lcom/android/wm/shell/pip/phone/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/w;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/w;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/w;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/w;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/w;->b:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/w;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->b(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZZ)V

    return-void
.end method
