.class public abstract Lv3/l$a;
.super Lv3/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/c<",
        "Lv3/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv3/l;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public c:Lv3/l;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/l;)V
    .registers 2

    invoke-direct {p0}, Lv3/c;-><init>()V

    iput-object p1, p0, Lv3/l$a;->b:Lv3/l;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lv3/l;

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_c

    iget-object v0, p0, Lv3/l$a;->b:Lv3/l;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lv3/l$a;->c:Lv3/l;

    :goto_e
    if-eqz v0, :cond_24

    sget-object v1, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    iget-object p1, p0, Lv3/l$a;->b:Lv3/l;

    iget-object p0, p0, Lv3/l$a;->c:Lv3/l;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lv3/l;->i(Lv3/l;)V

    :cond_24
    return-void
.end method
