.class public Lm0/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo0/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lj0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lj0/e;


# direct methods
.method public constructor <init>(Lj0/a;Ljava/lang/Object;Lj0/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/a<",
            "TDataType;>;TDataType;",
            "Lj0/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->a:Lj0/a;

    iput-object p2, p0, Lm0/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm0/f;->c:Lj0/e;

    return-void
.end method
