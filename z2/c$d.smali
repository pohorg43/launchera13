.class public final Lz2/c$d;
.super Lz2/c;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/c<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Lz2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/c<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(Lz2/c;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/c<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/c;-><init>()V

    iput-object p1, p0, Lz2/c$d;->a:Lz2/c;

    iput p2, p0, Lz2/c$d;->b:I

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    invoke-virtual {p1}, Lz2/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lz2/c$a;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lz2/c$d;->c:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, Lz2/c$d;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->a(II)V

    iget-object v0, p0, Lz2/c$d;->a:Lz2/c;

    iget p0, p0, Lz2/c$d;->b:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lz2/c;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget p0, p0, Lz2/c$d;->c:I

    return p0
.end method
