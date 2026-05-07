.class public final synthetic Lcom/android/launcher3/util/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/util/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/util/b;

    invoke-direct {v0}, Lcom/android/launcher3/util/b;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/b;->a:Lcom/android/launcher3/util/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/util/FlagOp;->b(I)I

    move-result p0

    return p0
.end method
