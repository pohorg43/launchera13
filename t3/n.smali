.class public final Lt3/n;
.super Lu3/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/c<",
        "Lt3/l<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lt3/n;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lu3/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt3/n;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lt3/l;

    iget-object p1, p0, Lt3/n;->_state:Ljava/lang/Object;

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    goto :goto_d

    :cond_8
    sget-object p1, Lt3/m;->a:Lv3/y;

    iput-object p1, p0, Lt3/n;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public b(Ljava/lang/Object;)[Lb3/d;
    .registers 2

    check-cast p1, Lt3/l;

    const/4 p1, 0x0

    iput-object p1, p0, Lt3/n;->_state:Ljava/lang/Object;

    sget-object p0, Lu3/b;->a:[Lb3/d;

    return-object p0
.end method
