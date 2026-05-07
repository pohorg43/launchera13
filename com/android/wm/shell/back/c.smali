.class public final synthetic Lcom/android/wm/shell/back/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/c;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/back/c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/back/c;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/back/c;->b:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->c(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Z)V

    return-void
.end method
