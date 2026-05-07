.class public abstract Lx3/c$b;
.super Lv3/l;
.source ""

# interfaces
.implements Lq3/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final d:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private volatile synthetic isTaken:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lx3/c$b;

    const-string v1, "isTaken"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lx3/c$b;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lx3/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lv3/l;-><init>()V

    iput-object p2, p0, Lx3/c$b;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lx3/c$b;->isTaken:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 1

    invoke-virtual {p0}, Lv3/l;->p()Z

    return-void
.end method

.method public abstract s()V
.end method

.method public abstract t()Z
.end method
