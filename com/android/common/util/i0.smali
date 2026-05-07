.class public final synthetic Lcom/android/common/util/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field public static final synthetic a:Lcom/android/common/util/i0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/i0;

    invoke-direct {v0}, Lcom/android/common/util/i0;-><init>()V

    sput-object v0, Lcom/android/common/util/i0;->a:Lcom/android/common/util/i0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/common/util/SoundPlayerUtils;->e(Landroid/media/SoundPool;II)V

    return-void
.end method
