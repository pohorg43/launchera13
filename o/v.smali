.class public Lo/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/v;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo/v;

    invoke-direct {v0}, Lo/v;-><init>()V

    sput-object v0, Lo/v;->a:Lo/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
