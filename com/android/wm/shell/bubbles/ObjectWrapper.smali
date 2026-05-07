.class public Lcom/android/wm/shell/bubbles/ObjectWrapper;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/os/IBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/bubbles/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-object p0
.end method
