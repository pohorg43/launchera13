.class public final Lcom/oplus/card/util/CardScope$special$$inlined$CoroutineExceptionHandler$1;
.super Lb3/a;
.source ""

# interfaces
.implements Lq3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/util/CardScope;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lq3/c0$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lb3/a;-><init>(Lb3/f$b;)V

    return-void
.end method


# virtual methods
.method public handleException(Lb3/f;Ljava/lang/Throwable;)V
    .registers 3

    const-string p0, "catch exception: "

    const-string p1, "CardScope"

    invoke-static {p2, p0, p1}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
