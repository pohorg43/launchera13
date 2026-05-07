.class public interface abstract annotation Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EntranceType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final AOD:I = 0x4

.field public static final ASSISTANT:I = 0x1

.field public static final CALENDAR:I = 0x2000

.field public static final CAPSULE:I = 0x20

.field public static final CAR_LAUNCHER:I = 0x1000

.field public static final Companion:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

.field public static final HEADSET:I = 0x80

.field public static final LAUNCHER:I = 0x2

.field public static final LOCK_SCREEN:I = 0x40

.field public static final NOTIFICATION:I = 0x10

.field public static final SECONDARY_LOCKSCREEN:I = 0x100

.field public static final SECONDARY_NOTIFICATION:I = 0x200

.field public static final SECONDARY_SECONDARY_LAUNCHER:I = 0x400

.field public static final SEEDING_HOST_APP:I = 0x40000000

.field public static final STATUS_BAR:I = 0x8

.field public static final TAG:Ljava/lang/String; = "EntranceType"

.field public static final UNDEFINED:I = -0x1

.field public static final WATCH:I = 0x800


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$EntranceType$Companion;

    return-void
.end method
