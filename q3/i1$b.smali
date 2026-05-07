.class public final Lq3/i1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb3/f$b<",
        "Lq3/i1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lq3/i1$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/i1$b;

    invoke-direct {v0}, Lq3/i1$b;-><init>()V

    sput-object v0, Lq3/i1$b;->a:Lq3/i1$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
