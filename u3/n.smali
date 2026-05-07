.class public final Lu3/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb3/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu3/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu3/n;

    invoke-direct {v0}, Lu3/n;-><init>()V

    sput-object v0, Lu3/n;->a:Lu3/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lb3/f;
    .registers 1

    sget-object p0, Lb3/h;->a:Lb3/h;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
