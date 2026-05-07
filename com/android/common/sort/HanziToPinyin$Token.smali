.class public Lcom/android/common/sort/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/sort/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public mSource:Ljava/lang/String;

.field public mTarget:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mType:I

    iput-object p2, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/common/sort/HanziToPinyin$Token;->mTarget:Ljava/lang/String;

    return-void
.end method
