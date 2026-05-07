.class public Lm0/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh1/a$b<",
        "Lm0/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 1

    new-instance p0, Lm0/v;

    invoke-direct {p0}, Lm0/v;-><init>()V

    return-object p0
.end method
