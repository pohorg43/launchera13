.class public final Lh3/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3/f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public final synthetic c:Lh3/f;


# direct methods
.method public constructor <init>(Lh3/f;)V
    .registers 2

    iput-object p1, p0, Lh3/f$a;->c:Lh3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lh3/f$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lh3/f$a;->b:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lh3/f$a;->c:Lh3/f;

    iget-object v0, v0, Lh3/f;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/f$a;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    iput-boolean v1, p0, Lh3/f$a;->b:Z

    :cond_17
    iget-object p0, p0, Lh3/f$a;->a:Ljava/lang/String;

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lh3/f$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lh3/f$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lh3/f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
