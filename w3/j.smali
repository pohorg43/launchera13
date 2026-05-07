.class public final Lw3/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw3/i;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/j;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()I
    .registers 1

    iget p0, p0, Lw3/j;->a:I

    return p0
.end method
