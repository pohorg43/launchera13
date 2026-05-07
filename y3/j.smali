.class public final Ly3/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly3/j;->c:I

    iput p2, p0, Ly3/j;->d:I

    iput p1, p0, Ly3/j;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ly3/j;->a:I

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Ly3/j;->b:I

    return-void
.end method
