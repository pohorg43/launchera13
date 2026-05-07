.class public Lm0/l$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lm0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/m<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc1/f;

.field public final synthetic c:Lm0/l;


# direct methods
.method public constructor <init>(Lm0/l;Lc1/f;Lm0/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/f;",
            "Lm0/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lm0/l$d;->c:Lm0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/l$d;->b:Lc1/f;

    iput-object p3, p0, Lm0/l$d;->a:Lm0/m;

    return-void
.end method
