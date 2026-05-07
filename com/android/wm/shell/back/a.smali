.class public final synthetic Lcom/android/wm/shell/back/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/a;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput p2, p0, Lcom/android/wm/shell/back/a;->b:F

    iput p3, p0, Lcom/android/wm/shell/back/a;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/a;->a:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget v1, p0, Lcom/android/wm/shell/back/a;->b:F

    iget p0, p0, Lcom/android/wm/shell/back/a;->c:F

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->b(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FF)V

    return-void
.end method
