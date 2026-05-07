.class public final Lb3/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb3/f$b<",
        "Lb3/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lb3/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb3/e$a;

    invoke-direct {v0}, Lb3/e$a;-><init>()V

    sput-object v0, Lb3/e$a;->a:Lb3/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
