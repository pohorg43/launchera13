.class public Lcom/oplus/fancyicon/util/Utils$Point;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public mX:D

.field public mY:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iput-wide p3, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    return-void
.end method


# virtual methods
.method public minus(Lcom/oplus/fancyicon/util/Utils$Point;)Lcom/oplus/fancyicon/util/Utils$Point;
    .registers 7

    new-instance v0, Lcom/oplus/fancyicon/util/Utils$Point;

    iget-wide v1, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide v3, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    iget-wide p0, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    sub-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/fancyicon/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method

.method public offset(Lcom/oplus/fancyicon/util/Utils$Point;)V
    .registers 6

    iget-wide v0, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide v2, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mX:D

    iget-wide v0, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    iget-wide v2, p1, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/fancyicon/util/Utils$Point;->mY:D

    return-void
.end method
