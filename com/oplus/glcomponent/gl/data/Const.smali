.class public final Lcom/oplus/glcomponent/gl/data/Const;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final BYTES_PER_INT:I = 0x4

.field public static final BYTES_PER_MAT4:I = 0x40

.field public static final BYTES_PER_SHORT:I = 0x2

.field public static final DIMEN_MAX:I = 0x1388

.field public static final DIMEN_MIN:I = 0x1

.field public static final INSTANCE:Lcom/oplus/glcomponent/gl/data/Const;

.field public static final INVALID_BUFFER:I = -0x1

.field public static final INVALID_HANDLE:I = -0x1

.field public static final INVALID_TEXTURE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/gl/data/Const;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/data/Const;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/gl/data/Const;->INSTANCE:Lcom/oplus/glcomponent/gl/data/Const;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
