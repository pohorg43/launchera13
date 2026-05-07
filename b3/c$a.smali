.class public final Lb3/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final a:[Lb3/f;


# direct methods
.method public constructor <init>([Lb3/f;)V
    .registers 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/c$a;->a:[Lb3/f;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Lb3/c$a;->a:[Lb3/f;

    sget-object v0, Lb3/h;->a:Lb3/h;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return-object v0
.end method
