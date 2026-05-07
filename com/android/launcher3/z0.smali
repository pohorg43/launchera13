.class public final synthetic Lcom/android/launcher3/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z0;->a:Lcom/android/launcher3/OplusLauncherModel;

    iput p2, p0, Lcom/android/launcher3/z0;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/z0;->a:Lcom/android/launcher3/OplusLauncherModel;

    iget p0, p0, Lcom/android/launcher3/z0;->b:I

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->f(Lcom/android/launcher3/OplusLauncherModel;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
