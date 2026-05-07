.class public final synthetic Lcom/android/launcher3/graphics/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/graphics/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/graphics/b;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/b;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/b;->a:Lcom/android/launcher3/graphics/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
